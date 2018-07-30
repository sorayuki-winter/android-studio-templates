package ${packageName}.di;

import dagger.android.AndroidInjector;
import dagger.android.DaggerApplication;

public class MyDaggerApplication extends DaggerApplication {

    @Override
    protected AndroidInjector<? extends DaggerApplication> applicationInjector() {
        return DaggerAppComponent.builder().application(this).build();
    }
}
