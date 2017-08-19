package com.reoky.crackme.challengeone.fragments;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import com.reoky.crackme.challengeone.R;
import com.reoky.crackme.challengeone.listeners.AboutFragmentOnClickListener;

public class AboutFragment extends Fragment {
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.fragment_about, container, false);
        ((Button) view.findViewById(R.id.button_quit)).setOnClickListener(new AboutFragmentOnClickListener());
        return view;
    }
}
