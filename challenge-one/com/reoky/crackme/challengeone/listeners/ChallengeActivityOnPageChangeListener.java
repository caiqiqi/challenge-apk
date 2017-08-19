package com.reoky.crackme.challengeone.listeners;

import android.app.ActionBar;
import android.support.v4.view.ViewPager.SimpleOnPageChangeListener;

public class ChallengeActivityOnPageChangeListener extends SimpleOnPageChangeListener {
    ActionBar actionBar;

    public ChallengeActivityOnPageChangeListener(ActionBar actionBar) {
        this.actionBar = actionBar;
    }

    public void onPageSelected(int position) {
        this.actionBar.setSelectedNavigationItem(position);
    }
}
