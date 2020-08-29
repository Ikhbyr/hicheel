import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { DemoSchoolRoutingModule } from './demo-school-routing.module';
import { ScreensModule } from '@nes/screens';
import { SharedModule } from '@nes/shared';
import { LangModule } from '@nes/core';
// screens

import { DemoSchoolDataService } from './services/demo.data.service';
import { DemoLessonDataService } from './services/demo-school-021-02.service';
// services

import { DemoSchool020Screen } from './demo-school-020/demo-school-020.screen';
import { DemoSchool021Screen } from './demo-school-021/demo-school-021.screen';
import { DemoSchool02102Screen } from './demo-school-021/demo-school-021-02/demo-school-021-02.screen';
import { DemoSchool02121Screen } from './demo-school-021/demo-school-021-02/demo-school-021-21.screen';

import { from } from 'rxjs';
import {
  ExcelModule,
  GridModule,
  PDFModule,
} from '@progress/kendo-angular-grid';

@NgModule({
  imports: [
    CommonModule,
    DemoSchoolRoutingModule,
    ScreensModule,
    SharedModule,
    ExcelModule,
    PDFModule,
    GridModule,
    LangModule.forFeature({
      path: 'demo-school'
    })
  ],
  declarations: [DemoSchool020Screen, DemoSchool021Screen, DemoSchool02102Screen, DemoSchool02121Screen],
  exports: [DemoSchool020Screen, DemoSchool02102Screen],
  providers: [DemoSchoolDataService, DemoLessonDataService]
})
export class DemoSchoolModule { }
