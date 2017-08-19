package com.reoky.crackme.challengeone.fragments;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.ToggleButton;
import com.reoky.crackme.challengeone.R;
import com.reoky.crackme.challengeone.listeners.HintFragmentOnCheckedChangeListener;

public class HintFragment extends Fragment {
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.fragment_hint, container, false);
        ((ToggleButton) view.findViewById(R.id.switch_show_hint)).setOnCheckedChangeListener(new HintFragmentOnCheckedChangeListener((TextView) view.findViewById(R.id.text_hint)));
        return view;
    }
}
