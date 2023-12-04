import { NgModule } from '@angular/core';
import { BrowserModule, provideClientHydration } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HttpClientModule } from '@angular/common/http';
import { NgbModule, NgbNavModule } from '@ng-bootstrap/ng-bootstrap';
import { MovieItemListComponent } from './components/movie/movie-item-list/movie-item-list.component';
import { PageMovieListComponent } from './ui/page-movie-list/page-movie-list.component';
import { PageProfileComponent } from './ui/page-profile/page-profile.component';
import { AuthenticationApprovedComponent } from './components/profile/authentication-approved/authentication-approved.component';
import { FooterComponent } from './components/reutilizables/footer/footer.component';
import { NavComponent } from './components/reutilizables/nav/nav.component';
import { PageCustomListDetailsComponent } from './ui/page-profile/page-custom-list-details/page-custom-list-details.component';
import { ReactiveFormsModule } from '@angular/forms';

@NgModule({
  declarations: [
    AppComponent,
    MovieItemListComponent,
    PageMovieListComponent,
    PageProfileComponent,
    AuthenticationApprovedComponent,
    FooterComponent,
    NavComponent,
    PageCustomListDetailsComponent

  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    NgbModule,
    HttpClientModule,
    NgbNavModule,
    ReactiveFormsModule
  ],
  providers: [
    provideClientHydration()
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }
