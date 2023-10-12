import { ComponentFixture, TestBed } from '@angular/core/testing';

import { RestaurantCardComponetComponent } from './restaurant-card-componet.component';

describe('RestaurantCardComponetComponent', () => {
  let component: RestaurantCardComponetComponent;
  let fixture: ComponentFixture<RestaurantCardComponetComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [RestaurantCardComponetComponent]
    });
    fixture = TestBed.createComponent(RestaurantCardComponetComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
