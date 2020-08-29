import { Injectable, Injector } from '@angular/core';
import { RemoteDataService } from '@nes/data';
import { DemoSchoolModel } from '../models/demo-school-020.model';
import { Observable } from 'rxjs';

@Injectable()
export class DemoSchool020DataService extends RemoteDataService<DemoSchoolModel> {
  constructor(injector: Injector) {
    super(injector);
  }
  userId:String
  getUserid(){
    return this.userId
  }
  setUserId(id){
    this.userId = id
  }
  options = {
    modelType: DemoSchoolModel,
    isOld: true,
    syncOptions: {
      read:99990020,
      create: 99990021,
      update: 99990022,
      delete: 99990023,
      detail: 99990024,
    },
  };
}
