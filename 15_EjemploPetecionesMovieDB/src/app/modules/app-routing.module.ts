import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { MoviePopularListComponent } from '../components/movie-popular-list/movie-popular-list.component';
import { MovieTopRatedListComponent } from '../components/movie-top-rated-list/movie-top-rated-list.component';

const routes: Routes = [
  { path: '', component: MoviePopularListComponent },
  { path: '', component: MovieTopRatedListComponent }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
