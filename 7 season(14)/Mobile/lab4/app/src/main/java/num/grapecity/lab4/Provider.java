package num.grapecity.lab4;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQueryBuilder;
import android.net.Uri;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import java.util.Objects;

public class Provider extends ContentProvider {
    public static final String AUTHORITY = "num.grapecity.provider";
    static final int STUDENTS = 1;
    static final int STUDENT_ID = 2;
    static final UriMatcher uriMatcher;
    private static final String mimeTypeDirPrefix = "vnd.android.cursor.dir/";
    private static final String mimeTypeItemPrefix = "vnd.android.cursor.item/";
    private static final String accountPath = "UserInfo";

    static {
        uriMatcher = new UriMatcher(UriMatcher.NO_MATCH);
        // Match uri to account table.
        uriMatcher.addURI(AUTHORITY, accountPath, STUDENTS);
        // Match uri to account table row.
        uriMatcher.addURI(AUTHORITY, accountPath + "/#", STUDENT_ID);
    }

    private DatabaseHelper databaseHelper;

    @Override
    public boolean onCreate() {
        databaseHelper = new DatabaseHelper(getContext());
        return false;
    }

    @Nullable
    @Override
    public Cursor query(@NonNull Uri uri, @Nullable String[] projection, @Nullable String selection, @Nullable String[] selectionArgs, @Nullable String sortOrder) {
        SQLiteQueryBuilder queryBuilder = new SQLiteQueryBuilder();
        queryBuilder.setTables("UserInfo");
        Cursor cursor = queryBuilder.query(databaseHelper.getReadableDatabase(), projection, selection, selectionArgs, null, null, null);
        cursor.setNotificationUri(Objects.requireNonNull(getContext()).getContentResolver(), uri);
        return cursor;
    }

    @Nullable
    @Override
    public String getType(@NonNull Uri uri) {
        // Data mimetype string format. vndPrefix/vnd.<authority>.<path>
        StringBuilder retBuf = new StringBuilder();
        // Parse request code.
        int requestCode = uriMatcher.match(uri);
        if (requestCode == STUDENTS) {
            // If request table.
            retBuf.append(mimeTypeDirPrefix);
            retBuf.append("vnd.");
            retBuf.append(AUTHORITY);
            retBuf.append(".");
            retBuf.append(accountPath);
        } else if (requestCode == STUDENT_ID) {
            // If request table rows.
            retBuf.append(mimeTypeItemPrefix);
            retBuf.append("vnd.");
            retBuf.append(AUTHORITY);
            retBuf.append(".");
            retBuf.append(accountPath);
        }
        return retBuf.toString();
    }

    @Nullable
    @Override
    public Uri insert(@NonNull Uri uri, @Nullable ContentValues contentValues) {
        Uri ret;
        // Get account db object.
        SQLiteDatabase accountDb = databaseHelper.getWritableDatabase();
        // Get uri match code.
        // Insert user data into SQLite database account table and get newly added account id..
        long newAccountId = accountDb.insert("UserInfo", null, contentValues);
        // Create new account uri. Uri string format : "content://<authority>/path/id".
        String newAccountUriStr = "content://" + AUTHORITY + "/" + accountPath + "/" + newAccountId;
        ret = Uri.parse(newAccountUriStr);
        return ret;
    }

    @Override
    public int delete(@NonNull Uri uri, @Nullable String selection, @Nullable String[] selectionArgs) {
        // Implement this to handle requests to delete one or more rows.
        // Get account db object. Below code will create a SQLite database.
        SQLiteDatabase accountDb = databaseHelper.getWritableDatabase();
        // Delete all rows in account table.
//        int ret = accountDb.delete("UserInfo", selection, selectionArgs);
        // Delete row with request row id.
        String accountId = uri.getPathSegments().get(1);
        String whereClause = " _id = ? ";
        String[] whereArgsArr = {accountId};
        return accountDb.delete("UserInfo", whereClause, whereArgsArr);
    }

    @Override
    public int update(@NonNull Uri uri, @Nullable ContentValues values, @Nullable String selection, @Nullable String[] selectionArgs) {
        // Return updated rows count.
        int ret;
        // Get account db object.
        SQLiteDatabase accountDb = databaseHelper.getWritableDatabase();
        // Get uri match code.
//        int matchCode = uriMatcher.match(uri);
        // Update rows with request row id.
        String accountId = uri.getPathSegments().get(1);
        String whereClause = " _id = ? ";
        String[] whereArgsArr = {accountId};
        ret = accountDb.update("UserInfo", values, whereClause, whereArgsArr);
        return ret;
    }
}
