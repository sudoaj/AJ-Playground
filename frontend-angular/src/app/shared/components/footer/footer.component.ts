import { Component } from '@angular/core';

@Component({
  selector: 'app-footer',
  imports: [],
  templateUrl: './footer.component.html',
  styleUrl: './footer.component.css'
})
export class FooterComponent {

  appInfo = {
    name: 'AJ-Playground.org',
    logo: 'angular',
    network: 'AJ-Playground.org',
    website: 'https://aj-playground.org'
  }

}
