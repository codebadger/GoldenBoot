import { TestBed, inject } from '@angular/core/testing';

import { AboutService } from './about.service';

describe('AboutService', () => {
  beforeEach(() => {
    TestBed.configureTestingModule({
      providers: [AboutService]
    });
  });

  it('should ...', inject([AboutService], (service: AboutService) => {
    expect(service).toBeTruthy();
  }));
});
