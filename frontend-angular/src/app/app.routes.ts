import { Routes } from '@angular/router';

import { HomeComponent } from './core/home/home.component';
import {FourOhFourPageComponent} from './core/four-oh-four-page/four-oh-four-page.component';

export const routes: Routes = [
    { path: '', component: HomeComponent },
    { path: '**', component: FourOhFourPageComponent },

];
