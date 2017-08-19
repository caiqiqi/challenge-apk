package com.reoky.crackme.challengeone.listeners;

import android.view.View;
import android.view.View.OnClickListener;
import com.reoky.crackme.challengeone.R;

public class AboutFragmentOnClickListener implements OnClickListener {
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.button_quit:
                view.setEnabled(false);
                System.exit(0);
                return;
            default:
                return;
        }
    }
}
