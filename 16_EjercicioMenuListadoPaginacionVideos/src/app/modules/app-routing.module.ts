import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { MovieListComponent } from '../components/movie-list/movie-list.component';
import { PageNotFoundComponent } from '../components/page-not-found/page-not-found.component';
import { MovieDetailsComponent } from '../components/movie-details/movie-details.component';

const routes: Routes = [
  { path: 'movies', component: MovieListComponent },
  { path: 'movie/:id', component: MovieDetailsComponent },
  { path: '', pathMatch: 'full', redirectTo: '/movies' },
  { path: '**', component: PageNotFoundComponent }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
