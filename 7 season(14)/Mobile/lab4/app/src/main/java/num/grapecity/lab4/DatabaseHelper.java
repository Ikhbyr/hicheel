package num.grapecity.lab4;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

public class DatabaseHelper extends SQLiteOpenHelper {

    private static final String TAG = "DatabaseHelper";
    private static final String TABLE_NAME = "UserInfo";
    private static final String COL1 = "Username";
    private static final String COL2 = "Password";
    private static final String COL3 = "Age";
    private static final String COL4 = "Gender";
    private static final String COL5 = "Phone";
    private static final String COL6 = "Date";

    public DatabaseHelper(Context context) {
        super(context, TABLE_NAME, null, 1);
    }

    @Override
    public void onCreate(SQLiteDatabase sqLiteDatabase) {
        sqLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS UserInfo(Username VARCHAR, Password VARCHAR, gender VARCHAR, phone VARCHAR, date DATE, age INT);");
    }

    @Override
    public void onUpgrade(SQLiteDatabase sqLiteDatabase, int i, int i1) {
        sqLiteDatabase.execSQL("DROP TABLE IF EXISTS " + TABLE_NAME);
        onCreate(sqLiteDatabase);
    }

    public boolean addUser(String name, String pass, String gender, String date, int age, int phone) {
        SQLiteDatabase db = this.getWritableDatabase();
        ContentValues contentValues = new ContentValues();
        contentValues.put(COL1, name);
        contentValues.put(COL2, pass);
        contentValues.put(COL3, age);
        contentValues.put(COL4, gender);
        contentValues.put(COL5, phone);
        contentValues.put(COL6, date);
        long result = db.insert(TABLE_NAME, null, contentValues);
        if (result == -1) {
            return false;
        }
        return true;
    }

    public Cursor userInfo(String userName) {
        SQLiteDatabase db = this.getWritableDatabase();
        Cursor mCursor = db.rawQuery("SELECT * FROM " + TABLE_NAME + " WHERE USERNAME=?", new String[]{userName});
        return mCursor;
    }

    public boolean updateInfo(String name, int age, String gender, int number, String day) {
        SQLiteDatabase db = this.getWritableDatabase();
        ContentValues contentValues = new ContentValues();
        contentValues.put(COL3, age);
        contentValues.put(COL4, gender);
        contentValues.put(COL5, number);
        contentValues.put(COL6, day);
        long result = db.update(TABLE_NAME, contentValues, "USERNAME = ?", new String[]{name});
        if (result == -1) {
            return false;
        }
        return true;
    }

    public boolean login(String name, String pass) {
        SQLiteDatabase db = this.getWritableDatabase();
        Cursor mCursor = db.rawQuery("SELECT * FROM " + TABLE_NAME + " WHERE USERNAME=? AND PASSWORD=?", new String[]{name, pass});
        if (mCursor != null) {
            if (mCursor.getCount() > 0) {
                return true;
            }
        }
        return false;
    }
    public boolean changePass(String Password, String Username) {
        SQLiteDatabase db = this.getWritableDatabase();
        ContentValues contentValues = new ContentValues();
        contentValues.put(COL2, Password);
        long result = db.update(TABLE_NAME, contentValues, "USERNAME = ?", new String[]{Username});
        if (result == -1) {
            return false;
        }
        return true;
    }
}

