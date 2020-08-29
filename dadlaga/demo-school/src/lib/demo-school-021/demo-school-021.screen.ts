import { Component, OnInit, ViewChild } from '@angular/core';
import {
  FormScreenBase,
  provideFormScreen,
  ScreenDiService,
  ScreenRefreshContext,
} from '@nes/screens';
import { DropdownComponent } from '@nes/shared';
import { Subscription, zip } from 'rxjs';
import { DemoSchoolModel} from '../models/demo-school-020.model';
import {DemoSchool020DataService } from '../services/demo-school-020.service';
import { UserSettingsService } from '@nes/core';

@Component({
  selector: 'demo-school-021',
  templateUrl: './demo-school-021.screen.html',
  styleUrls: ['./demo-school-021.screen.scss'],
  providers: [
    provideFormScreen(DemoSchool021Screen, DemoSchool020DataService),
    DemoSchool020DataService,
  ],
})
export class DemoSchool021Screen extends FormScreenBase implements OnInit {
  constructor(
    di: ScreenDiService,
    private service: DemoSchool020DataService
  ) {
    super(di);
  }
  readonly scrCode = 'DEMO-SCHOOL-021';
  listScreen = 'DEMO-SCHOOL-020';

  formModel = this.createFormModel(new DemoSchoolModel());

  demoId: string;
  userId: string;
  companyCode: string;
  isPrivate = true;
  isStatusNew = false;
  oldBranchCode: string;
  branchList = [];
  maskList = [];

  obs: Subscription;

  initialParam: { id?: string } = {};
  onRefresh({ companyCode, param }: ScreenRefreshContext<DemoSchool021Screen>) {}

  ngAfterViewInit() {
    // Хэрэглэгчийн дэлгэрэнгүй ажилсны дараа төлвийг шалгаж байна.
    this.obs = zip(
      this.service.syncResponse$
    ).subscribe((res) => {
      const detail = res[0];
      if (detail.action === 'detail') {
        this.service.setUserId(detail.response.userid)
        this.userId = detail.response.demoid
        if (detail.response.userStatus === 0) {
          // Хэрэглэгчийн төлөв шинэ байвал readonly байна.
          this.isStatusNew = true;
        } else {

        }
      }
    });

    this.service.syncResponse$.subscribe((res) => {
      if (!res.error && (res.action === 'create' || res.action === 'update')) {

      }
    });
  }

  ngOnDestroy() {
    console.log("This is my data4: "+this.obs)
    if (this.obs) {
      this.obs.unsubscribe();
    }
  }

  responseDictSchoolName(data) {
  }
}
