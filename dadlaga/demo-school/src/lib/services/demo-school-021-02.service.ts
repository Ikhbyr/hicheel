import { Injectable, Injector } from '@angular/core';
import { RemoteDataService } from '@nes/data';
import { DemoLessonModel } from '../models/demo-lesson-020.model';
import { Observable } from 'rxjs';
import { DemoSchool020DataService } from './demo-school-020.service';

@Injectable()
export class DemoLessonDataService extends RemoteDataService<DemoLessonModel>
{
    constructor(
      injector: Injector,
      public service:  DemoSchool020DataService) {
        super(injector);
    }
    UserId: String
    getUserIdi(){
      return this.UserId=this.service.getUserid()
    }

    options = {
        isOld: true,
        modelType: DemoLessonModel,
        syncOptions: {
            read: {
              operCode: 99990040,
              param: p => {
                p[0].push(
                  {
                    _iField: 'userid', //Ямар талбартай харьцуулахаа энд бичнэ
                    _iOperation: '=', //Энд operation байна '<,>,=' гэх мэт
                    _iValue: this.getUserIdi(), //Ямар утгаар шүүлт хийх гэх байгаагаа бичнэ
                    _iType: 1
                  }
                );
                return p;
              }
            },
            create: 99990041,
            update: 99990042,
            delete: 99990043,
            detail: 99990044,
        }
    };
    checkLoginNameAvail(loginName: string): Observable<boolean> {
      return this.apiService.send({
        op: 10002320,
        data: [loginName],
      });
    }

    setBranch(data, operType) {
      let operCode = 10101451;
      if (operType === 'update') {
        operCode = 10101452;
      }
      return this.apiService.send({
        op: operCode,
        data: [data],
      });
    }

    getBranch(id) {
      return this.apiService.send({
        op: 10101457,
        data: [id],
      });
    }
}
