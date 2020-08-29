import { Component, OnInit, ViewChild } from '@angular/core';
import {
  FormScreenBase,
  provideFormScreen,
  ScreenDiService,
  ScreenRefreshContext,
} from '@nes/screens';
import { DropdownComponent } from '@nes/shared';
import { Subscription, zip } from 'rxjs';
import { DemoLessonModel} from '../../models/demo-lesson-020.model';
import { DemoLessonDataService } from '../../services/demo-school-021-02.service';
import { DemoSchool020DataService } from '../../services/demo-school-020.service';
import { Location } from '@angular/common';

@Component({
  selector: 'demo-school-021-21',
  templateUrl: './demo-school-021-21.screen.html',
  styleUrls: ['.././demo-school-021.screen.scss'],
  providers: [
    provideFormScreen(DemoSchool02121Screen, DemoLessonDataService),
    DemoLessonDataService, DemoSchool020DataService,
  ],
})
export class DemoSchool02121Screen extends FormScreenBase implements OnInit {
  constructor(
    di: ScreenDiService,
    public service: DemoLessonDataService,
    private servicesSchool: DemoSchool020DataService,
    private location: Location,
  ) {
    super(di);
  }
  readonly scrCode = 'DEMO-SCHOOL-021-21';
  listScreen = 'DEMO-SCHOOL-021-02';

  formModel = this.createFormModel(new DemoLessonModel());

  userId: string;
  companyCode: string;
  isPrivate = true;
  isStatusNew = false;
  isPassword = false;
  isBranchNew = false;
  registerMaskCode: string;
  oldBranchCode: string;
  branchList = [];
  maskList = [];

  obs: Subscription;

  initialParam: { id?: string } = {};
  onRefresh({ companyCode, param }: ScreenRefreshContext<DemoSchool02121Screen>) {
    console.log("Хэрэглэгчийн дугаар "+localStorage.getItem("paramUserId"))
    this.formModel.model.userid = +localStorage.getItem("paramUserId");
    localStorage.removeItem("paramUserId")
  }

  ngAfterViewInit() {
    // Хэрэглэгчийн дэлгэрэнгүй ажилсны дараа төлвийг шалгаж байна.
    this.obs = zip(
      this.service.syncResponse$
    ).subscribe((res) => {
      const detail = res[0];
      if (detail.action === 'detail') {
        if (detail.response.userStatus === 0) {
          // Хэрэглэгчийн төлөв шинэ байвал readonly байна.
          this.isStatusNew = true;
        } else {

        }
      }
    });

    this.service.syncResponse$.subscribe((res) => {
      if (!res.error && (res.action === 'create' || res.action === 'update')) {
        console.log("Huselt irlee")
        console.log("this is: ");
        this.di.router.ngOnDestroy()
        // location.reload()
        // history.back()
      }
    });

  }

  ngOnDestroy() {
    if (this.obs) {
      this.obs.unsubscribe();
    }
  }

  handleRegisterChange(dataItem) {

  }

}
