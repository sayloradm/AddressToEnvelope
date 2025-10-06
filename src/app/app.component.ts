import { Component } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

/**
 * App component
 */
@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss'],
  imports: [BrowserModule],
})
export class AppComponent {
  /**
   * Title of the app
   */
  title = 'addressToEnvelope';
}
