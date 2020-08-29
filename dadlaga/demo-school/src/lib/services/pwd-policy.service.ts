import { Injectable, Injector, Type } from '@angular/core';
import { ApiService } from '@nes/core';
import { PwdPolicyModel } from './../models/pwd-policy.model';
import { LocalDataService } from '@nes/data';

@Injectable()
export class PwdPolicyService extends LocalDataService<PwdPolicyModel> {
  isOld = false;

  options = {
    isOld: false,
    modelType: PwdPolicyModel
  };

  constructor(private apiService: ApiService) {
    super();
  }

  read() {
    return this.apiService.send({
      data: [1],
      op: 10002071
    });
  }

  getPwdPolicy() {
    return this.apiService.send({
      data: [1],
      op: 10002070
    });
  }

  setPwdPolicy(model: PwdPolicyModel) {
    return this.apiService.send({
      data: [model],
      op: 10002072
    });
  }

  setPwd(oldPwd: string, newPwd: string) {
    return this.apiService.send({
      data: [oldPwd, newPwd],
      op: 10002007
    });
  }
}
