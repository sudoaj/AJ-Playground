import { Component } from '@angular/core';
import { RouterLink } from '@angular/router';


@Component({
  selector: 'app-header',
  imports: [
    RouterLink
  ],
  templateUrl: './header.component.html',
  styleUrl: './header.component.css'
})
export class HeaderComponent {
  appInfo = {
    name: 'AJ Playground.org',
    logo: 'angular',
    network: 'sudoaj'
  }

}
