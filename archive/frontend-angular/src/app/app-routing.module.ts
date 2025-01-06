import { NgModule } from '@angular/core';
import { Routes, RouterModule,ExtraOptions } from '@angular/router';
import {HomeComponent} from './home/home.component'
const routes: Routes = [
  {path: '', component: HomeComponent},
  {path: 'home', component: HomeComponent}
];
const options: ExtraOptions = {
  onSameUrlNavigation: 'reload',
}
@NgModule({
  imports: [RouterModule.forRoot(routes,options)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
