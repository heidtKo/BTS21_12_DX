@IsTest
private class HelloWorldTest {
    
    @IsTest
    private static void GetDefaultGreeting() {

        Date useThisDate = Date.newInstance(2021, 5, 4);
        HelloWorld.setMockDate(useThisDate);
        String expected = 'Hello World!!! (5/4/2021)';

        System.assertEquals(expected, HelloWorld.newInstance().getProperGreeting(null));
    }

    @IsTest
    private static void GetCustomNameGreeting() {

        String customName = 'friend';
        Date useThisDate = Date.newInstance(2021, 5, 4);
        HelloWorld.setMockDate(useThisDate);
        String expected = 'Hello ' + customName + '!!! (5/4/2021)';

        System.assertEquals(expected, HelloWorld.newInstance().getProperGreeting(customName));
    }

    @IsTest
    private static void DemonstrateConsumerTestExperience() {

        mockHelloWorld mock = new mockHelloWorld();
        HelloWorld.setMockInstance(mock);
        System.assertEquals(mock.getProperGreeting(null), HelloWorld.newInstance().getProperGreeting(null));
    }

    private class mockHelloWorld
        implements IHelloWorld {

        public String getProperGreeting(String to) {
            return 'test_result';
        }
    }
}