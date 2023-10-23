import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppComponent } from './app.component';
import { PlanetaListComponent } from './components/planeta-list/planeta-list.component';
import { PlanetaItemComponent } from './components/planeta-item/planeta-item.component';

@NgModule({
  declarations: [
    AppComponent,
    PlanetaListComponent,
    PlanetaItemComponent
  ],
  imports: [
    BrowserModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
