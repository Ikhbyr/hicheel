import { ID, Field, Title, Model, FieldType } from '@nes/data';
import { Validators } from '@angular/forms';

@Model('DEMO-SCHOOL.DemoSchool')
export class DemoSchoolModel {
  @ID()
  @Field({
    filterable: true,
    sortable: true,
    validators: [Validators.max(99999999)]
  })
  demoId: number;

  @Field({
    sortable: true,
    validators: [Validators.max(9999999)]
  })
  userId: number;

  @Field({
    validators: [Validators.max(99999999)]
  })
  schoolName: string;

  @Field({
    filterable: true,
    sortable: true,
    validators: [Validators.maxLength(50)]
  })
  schoolName: string;

  @Field({
    validators: [Validators.maxLength(50)]
  })
  orderNo: string;

  @Field({
    filterable: true,
    sortable: true,
    validators: [Validators.maxLength(50)]
  })
  endDate: Date;

  @Field({
    sortable: true,
    validators: [Validators.maxLength(50)]
  })
  startDate: Date;

  @Field({
    filterable: true,
    sortable: true,
    validators: [Validators.max(9)]
  })
  gradePoint: number;
}
