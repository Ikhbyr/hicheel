import { ID, Field, Title, Model, FieldType } from '@nes/data';
import { Validators } from '@angular/forms';

@Model('DEMO-SCHOOL.DemoLesson')
export class DemoLessonModel {
  @ID()
  @Field({
    filterable: true,
    sortable: true,
    validators: [Validators.max(99999999)]
  })
  lessonId: number;

  @Field({
    validators: [Validators.max(99999999)]
  })
  userId: number;

  @Field({
    filterable: true,
    sortable: true,
    validators: [Validators.maxLength(50)]
  })
  lessonName: string;

  @Field({
    filterable: true,
    sortable: true,
    validators: [Validators.maxLength(50)]
  })
  seenDate: Date;

  @Field({
    filterable: true,
    sortable: true,
    validators: [Validators.max(100)]
  })
  point: number;
}
