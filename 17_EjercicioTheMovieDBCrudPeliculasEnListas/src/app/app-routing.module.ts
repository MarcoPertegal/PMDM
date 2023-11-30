import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { PageMovieListComponent } from './ui/page-movie-list/page-movie-list.component';
import { PageProfileComponent } from './ui/page-profile/page-profile.component';
import { AuthenticationApprovedComponent } from './components/profile/authentication-approved/authentication-approved.component';

const routes: Routes = [
  { path: 'page-movie-list', component: PageMovieListComponent },
  { path: 'page-profile', component: PageProfileComponent },
  { path: 'approved', component: AuthenticationApprovedComponent },
  { path: '', pathMatch: 'full', redirectTo: '/page-movie-list' },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
