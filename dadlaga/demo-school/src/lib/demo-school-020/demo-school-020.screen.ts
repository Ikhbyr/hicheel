import { Component, OnInit } from '@angular/core';
import {
  provideListScreen,
  ListScreenBase,
  ScreenDiService,
  ScreenRefreshContext
} from '@nes/screens';
// import { DemoSchool020DataService} from '../services/demo-school-020.service'
import { DemoSchool020DataService} from '../services/demo-school-020.service';;

@Component({
  selector: 'demo-school-020',
  templateUrl: './demo-school-020.screen.html',
  styleUrls: [],
  providers: [provideListScreen(DemoSchool020Screen, DemoSchool020DataService),DemoSchool020DataService]
})
export class DemoSchool020Screen extends ListScreenBase implements OnInit {
  constructor(di: ScreenDiService) {
    super(di);
  }

  readonly scrCode = 'DEMO-SCHOOL-020';
  formScreen = 'DEMO-SCHOOL-021';

  creatable = true;
  excelExportable = true;
  pdfExportable = true;

  isPrivate = true;
  readonly initialParam: {} = {};

  onRefresh({ param }: ScreenRefreshContext<DemoSchool020Screen>) {}

  ngOnInit() {
    super.ngOnInit();
  }
}
