import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { DemoSchool020Screen } from './demo-school-020/demo-school-020.screen';
import { DemoSchool021Screen } from './demo-school-021/demo-school-021.screen';
import { DemoSchool02102Screen } from './demo-school-021/demo-school-021-02/demo-school-021-02.screen';
import { DemoSchool02121Screen } from './demo-school-021/demo-school-021-02/demo-school-021-21.screen';
const routes: Routes = [
  {
    path: '020',
    component: DemoSchool020Screen
  },
  {
    path: '021',
    component: DemoSchool021Screen
  },
  {
    path: '021-02',
    component: DemoSchool02102Screen
  },
  {
    path: '021-21',
    component: DemoSchool02121Screen
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class DemoSchoolRoutingModule { }
