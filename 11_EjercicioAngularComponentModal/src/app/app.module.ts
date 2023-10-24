import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppComponent } from './app.component';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { PeopleItemComponent } from './components/people-item/people-item.component';
import { PeopleListComponent } from './components/people-list/people-list.component';


@NgModule({
  declarations: [
    AppComponent,
    PeopleItemComponent,
    PeopleListComponent
  ],
  imports: [
    BrowserModule,
    NgbModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
