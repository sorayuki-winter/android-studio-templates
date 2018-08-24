package ${packageName}.di;

public class Component {
    private static AppComponent sAppComponent;

    public static AppComponent get() {
        return sAppComponent;
    }

    static void set(AppComponent appComponent) {
        sAppComponent = appComponent;
    }
}
