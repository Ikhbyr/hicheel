package num.ikhee.lab8;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;

import android.Manifest;
import android.content.pm.PackageManager;
import android.graphics.Color;
import android.location.Location;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.widget.Toast;

import com.google.android.gms.location.LocationServices;
import com.google.android.gms.maps.CameraUpdateFactory;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.OnMapReadyCallback;
import com.google.android.gms.maps.SupportMapFragment;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.Marker;
import com.google.android.gms.maps.model.MarkerOptions;
import com.google.android.gms.maps.model.Polyline;
import com.google.android.gms.maps.model.PolylineOptions;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.location.FusedLocationProviderClient;
import com.google.android.gms.tasks.Task;

import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class MainActivity extends AppCompatActivity implements OnMapReadyCallback, GoogleMap.OnMapLongClickListener, GoogleMap.OnMarkerClickListener, GoogleMap.OnMyLocationChangeListener {

    GoogleMap map;
    public final static String TAG = "LAB-8 MAP";
    private static final String FINE_LOCATION = Manifest.permission.ACCESS_FINE_LOCATION;
    private static final String COURSE_LOCATION = Manifest.permission.ACCESS_COARSE_LOCATION;
    private static final int LOCATION_PERMISSION_REQUEST_CODE = 1;

    private boolean mLocationPermissionsGranted;
    private boolean doubleBackToExitPressedOnce = false;
    private static final float DEFAULT_ZOOM = 15f;
    private FusedLocationProviderClient mFusedLocationProviderClient;
    ArrayList markerPoints = new ArrayList();
    public ArrayList<Location> myLocationList;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        mLocationPermissionsGranted = false;
        SupportMapFragment mapFragment = (SupportMapFragment) getSupportFragmentManager()
                .findFragmentById(R.id.map);
        assert mapFragment != null;
        mapFragment.getMapAsync(this);
        this.enableMyLocation();
    }

    @Override
    public void onMapReady(GoogleMap googleMap) {
        map = googleMap;
//        LatLng ulaanbaatar = new LatLng(19.16, 73.34);
//        map.addMarker(new MarkerOptions().position(ulaanbaatar).title("Ulaanbaatar"));
//        map.moveCamera(CameraUpdateFactory.newLatLng(ulaanbaatar));
        if (mLocationPermissionsGranted) {
            getDeviceLocation();
            if (ActivityCompat.checkSelfPermission(this, Manifest.permission.ACCESS_FINE_LOCATION) != PackageManager.PERMISSION_GRANTED && ActivityCompat.checkSelfPermission(this, Manifest.permission.ACCESS_COARSE_LOCATION) != PackageManager.PERMISSION_GRANTED) {
                return;
            }
            map.setMyLocationEnabled(true);
        }
        map.setOnMapLongClickListener(this);
        map.setOnMarkerClickListener(this);
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        MenuInflater inflater = getMenuInflater();
        inflater.inflate(R.menu.map_menu, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Change the map type based on the user's selection.
        switch (item.getItemId()) {
            case R.id.normal_map:
                map.setMapType(GoogleMap.MAP_TYPE_NORMAL);
                return true;
            case R.id.hybrid_map:
                map.setMapType(GoogleMap.MAP_TYPE_HYBRID);
                return true;
            case R.id.satellite_map:
                map.setMapType(GoogleMap.MAP_TYPE_SATELLITE);
                return true;
            case R.id.terrain_map:
                map.setMapType(GoogleMap.MAP_TYPE_TERRAIN);
                return true;
            case R.id.draw:
                map.setOnMyLocationChangeListener(this);
                return true;
            default:
                return super.onOptionsItemSelected(item);
        }
    }

    private void enableMyLocation() {
        Log.d(TAG, "getLocationPermission: Getting location permissions");
        String[] permissions = {Manifest.permission.ACCESS_FINE_LOCATION,
                Manifest.permission.ACCESS_COARSE_LOCATION};

        if (ContextCompat.checkSelfPermission(this.getApplicationContext(),
                FINE_LOCATION) == PackageManager.PERMISSION_GRANTED) {
            if (ContextCompat.checkSelfPermission(this.getApplicationContext(),
                    COURSE_LOCATION) == PackageManager.PERMISSION_GRANTED) {
                mLocationPermissionsGranted = true;
            } else {
                ActivityCompat.requestPermissions(this,
                        permissions,
                        LOCATION_PERMISSION_REQUEST_CODE);
            }
        } else {
            ActivityCompat.requestPermissions(this,
                    permissions,
                    LOCATION_PERMISSION_REQUEST_CODE);
        }
    }

    private void getDeviceLocation() {
        Log.i(TAG, "getDeviceLocation: getting the devices current location");
        mFusedLocationProviderClient = LocationServices.getFusedLocationProviderClient(this);
        try {
            if (mLocationPermissionsGranted) {
                final Task location = mFusedLocationProviderClient.getLastLocation();
                location.addOnCompleteListener(new OnCompleteListener() {
                    @Override
                    public void onComplete(@NonNull Task task) {
                        if (task.isSuccessful()) {
                            Location currentLocation = (Location) task.getResult();
                            Log.i(TAG, "onComplete: found location ");
                            moveCamera(new LatLng(currentLocation.getLatitude(), currentLocation.getLongitude()),
                                    DEFAULT_ZOOM);

                        } else {
                            Log.i(TAG, "onComplete: current location is null");
                        }
                    }
                });
            }
        } catch (SecurityException e) {
            Log.e(TAG, "getDeviceLocation: SecurityException" + e.getMessage());
        }
    }

    private void moveCamera(LatLng latLng, float zoom) {
        Log.d(TAG, "moveCamera: moving the camera to: lat: " + latLng.latitude + ", lng: " + latLng.longitude);
        map.moveCamera(CameraUpdateFactory.newLatLngZoom(latLng, zoom));
    }

    @Override
    public void onMapLongClick(LatLng latLng) {
        Toast.makeText(this,
                "onMapLongClick:\n" + latLng.latitude + " : " + latLng.longitude,
                Toast.LENGTH_LONG).show();

        //Add marker on LongClick position
        MarkerOptions markerOptions =
                new MarkerOptions().position(latLng).title(latLng.toString()).snippet("Lab8");
        map.addMarker(markerOptions);
        markerPoints.add(latLng);

        if (markerPoints.size() >= 2) {
            LatLng origin = (LatLng) markerPoints.get(markerPoints.size()-2);
            LatLng dest = (LatLng) markerPoints.get(markerPoints.size()-1);
            calculateDistance(origin, dest);
        }

        Log.i(TAG, "Нийт marker болсон цэгүүд "+markerPoints.size());
    }

    private void calculateDistance(LatLng oldPosition, LatLng newPosition) {
        float[] results = new float[1];
        Location.distanceBetween(oldPosition.latitude, oldPosition.longitude,
                newPosition.latitude, newPosition.longitude, results);
        Toast.makeText(getApplicationContext(), "Distance: " + results[0], Toast.LENGTH_SHORT).show();
    }

    @Override
    public boolean onMarkerClick(Marker marker) {
        if (doubleBackToExitPressedOnce) {
            marker.remove();
            Log.i(TAG, "onMarkerClick: Marker Removed");
            Toast.makeText(this, "Marker Removed", Toast.LENGTH_LONG).show();
        } else {
            doubleBackToExitPressedOnce = true;
            new Handler().postDelayed(new Runnable() {
                @Override
                public void run() {
                    doubleBackToExitPressedOnce = false;
                }
            }, 2000);

            Log.i(TAG, "Эхний удаа дарагдлаа.");
        }
        return false;
    }

    @Override
    public void onMyLocationChange(Location location) {
        map.clear();
        myLocationList.add(location);
        Log.e("onMyLocationChange: ", location.getAltitude() + "Longitude: " + location.getLongitude());
        Log.e(TAG, "Шилжилт хийгдлээ. ");
        PolylineOptions p = new PolylineOptions().width(10).color(Color.RED).geodesic(true);
        if (myLocationList.size() > 1) {
            for (int i = 1; i < myLocationList.size(); i++) {
                p = p.add(new LatLng(myLocationList.get(i - 1).getLatitude(), myLocationList.get(i - 1).getLongitude())
                        , new LatLng(myLocationList.get(i).getLatitude(), myLocationList.get(i).getLongitude()));
            }
        }
        Polyline polyline = map.addPolyline(p);
        moveCamera(new LatLng (myLocationList.get(myLocationList.size() - 1).getLatitude(), myLocationList.get(myLocationList.size() - 1).getLongitude()), DEFAULT_ZOOM);
    }
}