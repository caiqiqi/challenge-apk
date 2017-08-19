package com.reoky.crackme.challengeone.listeners;

import android.os.Vibrator;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;
import com.reoky.crackme.challengeone.R;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStreamWriter;

public class ChallengeOneFragmentOnClickListener implements OnClickListener {
    public void onClick(View view) {
        View parent = (View) view.getParent().getParent();
        switch (view.getId()) {
            case R.id.challenge_one_button_check:
                if (parent != null) {
                    EditText textGuess = (EditText) parent.findViewById(R.id.challenge_one_text_guess);
                    if (textGuess.getText().toString().toLowerCase().equals("poorly-protected-secret")) {
                        textGuess.setTextColor(parent.getResources().getColor(R.color.color_nebula));
                        ((Vibrator) parent.getContext().getSystemService("vibrator")).vibrate(400);
                        Toast.makeText(parent.getContext(), "You've completed this challenge!", 1).show();
                        return;
                    }
                    textGuess.setTextColor(parent.getResources().getColor(R.color.color_nebula_dark));
                    Toast.makeText(parent.getContext(), "Sorry, that's not right..", 0).show();
                    return;
                }
                return;
            case R.id.button_write_file:
                Button buttonWrite = (Button) parent.findViewById(R.id.button_write_file);
                File file = view.getContext().getFileStreamPath("ANSWER");
                if (file.exists()) {
                    file.delete();
                    buttonWrite.setText(R.string.string_challenge_write_file);
                    Toast.makeText(parent.getContext(), "File Deleted", 1).show();
                    return;
                }
                try {
                    OutputStreamWriter outputStreamWriter = new OutputStreamWriter(parent.getContext().openFileOutput("ANSWER", 1));
                    outputStreamWriter.write("poorly-protected-secret");
                    outputStreamWriter.flush();
                    outputStreamWriter.close();
                    Toast.makeText(parent.getContext(), "File Written", 1).show();
                } catch (FileNotFoundException e) {
                    e.printStackTrace();
                } catch (IOException e2) {
                    e2.printStackTrace();
                }
                buttonWrite.setText(R.string.string_challenge_delete_file);
                return;
            default:
                return;
        }
    }
}
