import { Component } from '@angular/core';
import { RouterLink } from '@angular/router';
import { CommonModule } from '@angular/common';


import { JumboComponent } from '../../shared/components/jumbo/jumbo.component';
import { GithubComponent } from '../../shared/components/github/github.component';
import { BlogComponent } from '../../shared/components/blog/blog.component';
import { FollowComponent } from '../../shared/components/follow/follow.component';

@Component({
  selector: 'app-home',
  imports: [
    CommonModule,
    RouterLink,
    JumboComponent,
    GithubComponent,
    BlogComponent,
    FollowComponent
  ],
  templateUrl: './home.component.html',
  styleUrl: './home.component.css'
})
export class HomeComponent {

  name = 'Angular';
  angular = 'Angular';
  bootstrap = 'Bootstrap';
  fontawesome = 'Font Awesome';

  items = [
    {
      icon: "fa-solid fa-file-lines",
      name: "Landing Page",
      description: "Css linear-gradient",
      link: '/landing-page'
    },
    {
      icon: "fa-solid fa-address-card",
      name: "Images Cards",
      description: "Cascade Cards",
      link: '/cards'
    }
  ]


}
