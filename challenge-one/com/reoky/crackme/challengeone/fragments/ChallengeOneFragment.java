package com.reoky.crackme.challengeone.fragments;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import com.reoky.crackme.challengeone.R;
import com.reoky.crackme.challengeone.listeners.ChallengeOneFragmentOnClickListener;

public class ChallengeOneFragment extends Fragment {
    public void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
    }

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.fragment_challenge_one, container, false);
        ((Button) view.findViewById(R.id.challenge_one_button_check)).setOnClickListener(new ChallengeOneFragmentOnClickListener());
        Button buttonWriteFile = (Button) view.findViewById(R.id.button_write_file);
        buttonWriteFile.setOnClickListener(new ChallengeOneFragmentOnClickListener());
        if (view.getContext().getFileStreamPath("ANSWER").exists()) {
            buttonWriteFile.setText(R.string.string_challenge_delete_file);
        } else {
            buttonWriteFile.setText(R.string.string_challenge_write_file);
        }
        return view;
    }
}
