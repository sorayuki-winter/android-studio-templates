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
    abstract ${fragmentClass} ${fragmentClass?uncap_first};

    @ActivityScoped
    @Binds
    abstract ${scenesClass}Contract.Presenter ${scenesClass?uncap_first}Presenter(${scenesClass}Presenter presenter);
    
    //TODO: move to di.ActivityBindingModule
    /*
    @ActivityScoped
    @ContributesAndroidInjector(modules = ${scenesClass}Module.class)
    abstract ${activityClass} ${activityClass?uncap_first};
    */
}
