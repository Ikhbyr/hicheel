import { Injectable, Injector } from '@angular/core';
import { RemoteDataService } from '@nes/data';
import { DemoSchoolModel } from '../models/demo-school-020.model';

@Injectable()
export class DemoSchoolDataService extends RemoteDataService<DemoSchoolModel>
{
    constructor(injector: Injector) {
        super(injector);
    }

    options = {
        isOld: true,
        modelType: DemoSchoolModel,
        syncOptions: {
          read: {
            operCode: 99990020,
            param: p => {
              return p;
            }
          },
            create: 99990021,
            update: 99990022,
            delete: 99990023,
            detail: 99990024,
        }
    };
}
