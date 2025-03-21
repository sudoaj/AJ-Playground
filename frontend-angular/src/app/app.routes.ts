import { Routes } from '@angular/router';

import { HomeComponent } from './core/home/home.component';
import {FourOhFourPageComponent} from './core/four-oh-four-page/four-oh-four-page.component';
import { SignupComponent } from './core/signup/signup.component';
import { LoginComponent } from './core/login/login.component';

export const routes: Routes = [
    { path: '', component: HomeComponent },
    { path: 'home', component: HomeComponent },
    { path: 'login', component: LoginComponent},
    { path: 'signup', component: SignupComponent},
    { path: '**', component: FourOhFourPageComponent },

];
