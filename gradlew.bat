package as.course.myprilowenie;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.annotation.NonNull;

import java.util.List;

    public class GamesAdapter extends ArrayAdapter <Game> {
        private LayoutInflater inflater;
        private int layout;
        private List<Game> games;

        public GamesAdapter (@NonNull Context context,
                            int resource,
                            @NonNull List<Game> objects) {
            super(context, resource, objects);
            this.games = objects;
            this.layout = resource;
            this.inflater = LayoutInflater.from(context);
        }

        public View getView( int position, View convertView, ViewGroup parent) {
            View view=inflater.inflate(this.layout, parent, false);

            TextView gameNameView = view.findViewById(R.id.gameName);
            ImageView piltView = view.findViewById(R.id.pilt);

            Game game = games.get(position);

            gameNameView.setText(game.getName());
            piltView.setImageResource(game.getPiltResource);

            return view;
        }
    }                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     