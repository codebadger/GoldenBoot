import { GoldenBootPage } from './app.po';

describe('golden-boot App', () => {
  let page: GoldenBootPage;

  beforeEach(() => {
    page = new GoldenBootPage();
  });

  it('should display message saying app works', () => {
    page.navigateTo();
    expect(page.getParagraphText()).toEqual('app works!');
  });
});
