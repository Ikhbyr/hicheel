import { Field, ID, Title, Validators, Model } from '@nes/data';

@Model('DEMO-SCHOOL.PwdPolicy')
export class PwdPolicyModel {
  @ID()
  @Field({
    title: ''
  })
  pwdPolicyId: number;

  @Field({
    // title: 'Үүсгэх төрөл'
    // data: [{ id: 2, name: 'Дефолт' }, { id: 1, name: 'Автомат' }, { id: 0, name: 'Гараар' }]
  })
  createType: number;

  @Field({
    // title: 'Шинэчлэх төрөл'
    // data: [{ id: 2, name: 'Дефолт' }, { id: 1, name: 'Автомат' }, { id: 0, name: 'Гараар' }]
  })
  resetType: number;

  @Field({
    // title: 'Хамгийн бага урт'
  })
  minLen: number;

  @Field({
    // title: 'Хамгийн их урт'
  })
  maxLen: number;

  @Field({
    // title: 'Системээс үүсгэх урт'
  })
  autoLen: number;

  @Field({
    // title: 'Хүчинтэй хугацаа'
  })
  age: number;

  @Field({
    // title: 'Түүх хадгалах тоо'
  })
  histCount: number;

  @Field({
    title: ''
  })
  blockType: number;

  @Field({
    // title: 'Блоклох оролдлогын тоо'
  })
  blockTryCount: number;

  @Field({
    // title: 'И-Мэйл'
  })
  sendType: number;

  @Field({
    // title: 'Тайлбар'
  })
  msgDesc: string;

  @Field({
    // title: 'Тайлбар2'
  })
  msgDesc2: string;

  @Field({
    title: 'Regex'
  })
  admPwdRegex: {
    charType: number;
    atLeastOne: number;
    name: string;
    pwdPolicyId: number;
    isContains: number;
    charValues: string;
  }[];

  @Field({})
  captchaType: number;

  @Field({})
  captchaTryCount: number;

  @Field({
    // title: 'Системээс үүсгэх загвар',
    required: true
  })
  defaultPassword: string;
}
