package com.reoky.crackme.challengeone.listeners;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.TextView;

public class HintFragmentOnCheckedChangeListener implements OnCheckedChangeListener {
    TextView textHint;

    public HintFragmentOnCheckedChangeListener(TextView textHint) {
        this.textHint = textHint;
    }

    public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
        int newVisibility = isChecked ? 0 : 8;
        if (this.textHint != null) {
            this.textHint.setVisibility(newVisibility);
        }
    }
}
