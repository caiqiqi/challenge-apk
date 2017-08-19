package com.reoky.crackme.challengeone.activities;

import android.app.ActionBar;
import android.app.ActionBar.Tab;
import android.app.ActionBar.TabListener;
import android.app.FragmentTransaction;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.view.ViewPager;
import com.reoky.crackme.challengeone.R;
import com.reoky.crackme.challengeone.adaptors.ChallengePagerAdapter;
import com.reoky.crackme.challengeone.listeners.ChallengeActivityOnPageChangeListener;

public class ChallengeActivity extends FragmentActivity implements TabListener {
    ActionBar actionBar;
    ChallengePagerAdapter mChallengePagerAdapter;
    ViewPager mViewPager;

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_challenge);
        this.mChallengePagerAdapter = new ChallengePagerAdapter(getSupportFragmentManager());
        this.actionBar = getActionBar();
        this.actionBar.setNavigationMode(2);
        this.actionBar.setDisplayOptions(16);
        this.mViewPager = (ViewPager) findViewById(R.id.container);
        this.mViewPager.setAdapter(this.mChallengePagerAdapter);
        this.mViewPager.setOnPageChangeListener(new ChallengeActivityOnPageChangeListener(this.actionBar));
        this.actionBar.addTab(this.actionBar.newTab().setText("Challenge").setTabListener(this));
        this.actionBar.addTab(this.actionBar.newTab().setText("Hint").setTabListener(this));
        this.actionBar.addTab(this.actionBar.newTab().setText("About").setTabListener(this));
        getWindow().setSoftInputMode(2);
    }

    public void onTabSelected(Tab tab, FragmentTransaction fragmentTransaction) {
        this.mViewPager.setCurrentItem(tab.getPosition());
    }

    public void onTabUnselected(Tab tab, FragmentTransaction fragmentTransaction) {
    }

    public void onTabReselected(Tab tab, FragmentTransaction fragmentTransaction) {
    }
}
