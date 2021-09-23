import Koa from 'koa';
import BodyParser from 'koa-bodyparser';
import CountriesRoutes from './routes/Countries';
import { PORT } from './configs/environment';

const server = new Koa();

server.use(BodyParser());

server.use(CountriesRoutes.routes());

server.listen(PORT, () => console.log('SERVER STARTED'));
