import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppComponent } from './app.component';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { ToolbarComponent } from './toolbar-component/toolbar.component';
import { HomeScreenComponentComponent } from './home-screen-component/home-screen-component.component';
import { TextComponentComponent } from './text-component/text-component.component';

@NgModule({
  declarations: [
    AppComponent,
    ToolbarComponent,
    HomeScreenComponentComponent,
    TextComponentComponent
  ],
  imports: [
    BrowserModule,
    NgbModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
