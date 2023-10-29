import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { HttpClientModule } from '@angular/common/http';

import { AppComponent } from './app.component';
import { MaterialImportModule } from './material-import/material-import.module';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { ListFilterComponent } from './componets/list-filter/list-filter.component';
import { ItemFilterComponent } from './componets/item-filter/item-filter.component';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { ReactiveFormsModule } from '@angular/forms';



@NgModule({
  declarations: [
    AppComponent,
    ListFilterComponent,
    ItemFilterComponent
  ],
  imports: [
    BrowserModule,
    MaterialImportModule,
    BrowserAnimationsModule,
    HttpClientModule,
    NgbModule,
    ReactiveFormsModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
