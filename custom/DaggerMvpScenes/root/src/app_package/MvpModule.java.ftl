package ${scenesPackage};

import android.support.v4.app.FragmentManager;

import ${packageName}.di.ActivityScoped;
import ${packageName}.di.FragmentScoped;

import dagger.Binds;
import dagger.Module;
import dagger.Provides;
import dagger.android.ContributesAndroidInjector;

@Module
public abstract class ${scenesClass}Module {

    @ActivityScoped
    @Provides
    static FragmentManager provideFM(${activityClass} activity) {
        return activity.getSupportFragmentManager();
    }

    @FragmentScoped
    @ContributesAndroidInjector
    abstract ${fragmentClass} ${scenesLower}Fragment();

    @ActivityScoped
    @Binds
    abstract ${scenesClass}Contract.Presenter ${scenesLower}Presenter(${scenesClass}Presenter presenter);

    @ActivityScoped
    @ContributesAndroidInjector(modules = ${scenesClass}Module.class)
    abstract ${activityClass} ${scenesLower}Activity();
}
