import { Context } from 'koa';

class CountryController {
  public static create(ctx: Context):void {
    console.log('create');
    ctx.status = 200;
  }

  public static update(ctx: Context):void {
    console.log('update');
    ctx.status = 200;
  }

  public static delete(ctx: Context):void {
    console.log('delete');
    ctx.status = 200;
  }

  public static getOne(ctx: Context):void {
    console.log('getOne');
    ctx.status = 200;
  }

  public static getAll(ctx: Context):void {
    console.log('getAll');
    ctx.status = 200;
  }
}

export default CountryController;
