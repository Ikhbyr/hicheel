import {
  Component,
  OnInit
} from '@angular/core';
import {
  ListScreenBase,
  provideListScreen,
  ScreenDiService,
  ScreenRefreshContext,
} from '@nes/screens';
import { DemoLessonDataService } from '../../services/demo-school-021-02.service';
import { tap } from 'rxjs/operators';

@Component({
  selector: 'demo-school-021-02',
  templateUrl: './demo-school-021-02.screen.html',
  styles: [],
  providers: [provideListScreen( DemoSchool02102Screen,  DemoLessonDataService), DemoLessonDataService],
})
export class  DemoSchool02102Screen extends ListScreenBase implements OnInit{

  userId: string;
  data: any[];
  mySelection = [];
  creatable = false;
  constructor(
    di: ScreenDiService,
    public service:  DemoLessonDataService,
  ) {
    super(di);
  }
  readonly scrCode = 'DEMO-SCHOOL-021-02';
  formScreen = 'DEMO-SCHOOL-021-21';
  userid = 0;
  initialParam: { id?: string } = {};
  onRefresh({ param }: ScreenRefreshContext<DemoSchool02102Screen>) {
    console.log("User id: "+ this.service.getUserIdi())
    localStorage.setItem('paramUserId',  this.service.getUserIdi().toString());
  }
}
