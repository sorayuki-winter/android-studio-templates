package ${packageName}.data.source;

import ${packageName}.data.source.local.LocalDataSource;
import ${packageName}.data.source.remote.RemoteDataSource;
import ${packageName}.util.AppExecutors;
import ${packageName}.util.DiskIOThreadExecutor;

import java.util.concurrent.Executors;

import javax.inject.Singleton;

import dagger.Binds;
import dagger.Module;
import dagger.Provides;

/**
 * This is used by Dagger to inject the required arguments into the {@link Repository}.
 */
@Module
abstract public class RepositoryModule {

    private static final int THREAD_COUNT = 3;

    @Singleton
    @Provides
    static AppExecutors provideAppExecutors() {
        return new AppExecutors(new DiskIOThreadExecutor(),
                Executors.newFixedThreadPool(THREAD_COUNT),
                new AppExecutors.MainThreadExecutor());
    }

    @Singleton
    @Binds
    @Local
    abstract DataSource provideBooksLocalDataSource(LocalDataSource dataSource);

    @Singleton
    @Binds
    @Remote
    abstract DataSource provideBooksRemoteDataSource(RemoteDataSource dataSource);
}
