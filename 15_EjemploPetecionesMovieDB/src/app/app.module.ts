import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { HttpClientModule } from '@angular/common/http';

import { AppRoutingModule } from './modules/app-routing.module';
import { AppComponent } from './app.component';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { PageHomeComponent } from './ui/page-home/page-home.component';
import { MoviePopularListComponent } from './components/movie-popular-list/movie-popular-list.component';
import { MoviePopularItemComponent } from './components/movie-popular-item/movie-popular-item.component';
import { MovieTopRatedListComponent } from './components/movie-top-rated-list/movie-top-rated-list.component';
import { MovieTopRatedItemComponent } from './components/movie-top-rated-item/movie-top-rated-item.component';
import { PageNotFoundComponent } from './ui/page-not-found/page-not-found.component';

@NgModule({
  declarations: [
    AppComponent,
    PageHomeComponent,
    MoviePopularListComponent,
    MoviePopularItemComponent,
    MovieTopRatedListComponent,
    MovieTopRatedItemComponent,
    PageNotFoundComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    NgbModule,
    HttpClientModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
