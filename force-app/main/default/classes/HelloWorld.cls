public inherited sharing class HelloWorld
    implements IHelloWorld {

    public String getProperGreeting(String helloTo) {

        String target = helloTo;

        if (String.isBlank(helloTo)) {
            target = 'World';
        }

        return 'Hello ' + target + '!!! (' + getShortDate() + ')';
    }

    private String getShortDate() {

        Date working_date = Date.today();

        if (mockDate != null) {
            working_date = mockDate;
        }

        return working_date.month() + '/' + working_date.day() + '/' + working_date.year();
    }

    private static Date mockDate = null;

    @TestVisible
    private static void setMockDate(Date d) {
        mockDate = d;
    }

    public static IHelloWorld newInstance() {

        if (mockClass != null) {
            return mockClass;
        }

        return new HelloWorld();
    }

    private static IHelloWorld mockClass = null;
    
    @TestVisible
    private static void setMockInstance(IHelloWorld mock) {
        mockClass = mock;
    }
}