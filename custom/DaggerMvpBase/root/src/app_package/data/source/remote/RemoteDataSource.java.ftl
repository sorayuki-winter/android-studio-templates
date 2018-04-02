package ${packageName}.data.source.remote;

import android.support.annotation.NonNull;

import ${packageName}.data.source.DataSource;
import ${packageName}.util.AppExecutors;

import javax.inject.Inject;
import javax.inject.Singleton;

@Singleton
public class RemoteDataSource implements DataSource {

    private final AppExecutors mAppExecutors;

    @Inject
    RemoteDataSource(@NonNull AppExecutors executors) {
        mAppExecutors = executors;
    }
}
