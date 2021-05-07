import { MyGreeter } from "../../src/my-greeter/client";

describe('greeter', () => {
  let greeter: MyGreeter.Client;

  beforeEach(() => {
    greeter = new MyGreeter.Client();
  });

  it('should be created', () => {
    expect(greeter).toBeInstanceOf(MyGreeter.Client);
  });

  describe('getGreetings', () => {
    it('should return a message', () => {
      expect(greeter.getGreeting().length).toBeGreaterThan(0);
    })
  });
});
