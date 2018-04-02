package ${packageName}.data.source;

import javax.inject.Inject;
import javax.inject.Singleton;

@Singleton
public class Repository implements DataSource {

    private final DataSource mLocalDataSource;

    private final DataSource mRemoteDataSource;

    @Inject
    Repository(@Remote DataSource remoteDataSource, @Local DataSource localDataSource) {
        mRemoteDataSource = remoteDataSource;
        mLocalDataSource = localDataSource;
    }
}
