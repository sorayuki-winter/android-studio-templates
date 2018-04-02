package ${packageName}.data.source.local;

import android.support.annotation.NonNull;

import ${packageName}.data.source.DataSource;
import ${packageName}.util.AppExecutors;

import javax.inject.Inject;
import javax.inject.Singleton;

/**
 * Concrete implementation of a data source as a db.
 */
@Singleton
public class LocalDataSource implements DataSource {

    private final AppExecutors mAppExecutors;

    @Inject
    LocalDataSource(@NonNull AppExecutors executors) {
        mAppExecutors = executors;
    }
}
