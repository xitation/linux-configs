# Some hacks for my chromebook debian install

use List::Util qw(min max);

sub on_sel_grab {
    my $query = $_[0]->selection;
    open (my $pipe,'| /usr/bin/xclip -in') or die;
    print $pipe $query;
    close $pipe;
}

sub on_user_command {
    my ($term, $command) = @_;
    my $page_height = $term->nrow - 1;
    my $current_line = $term->view_start;
    my $new_line;
    for ($command) {
        /^pageup$/ and do {
            $new_line = max($current_line-$page_height, $term->top_row);
            $term->view_start($new_line);
            $term->want_refresh;
        };
        /^pagedown$/ and do {
            $new_line = min($current_line+$page_height, 0);
            $term->view_start($new_line);
            $term->want_refresh;
        };
        /^paste$/ and do {
            my ($self) = @_;
            my $content = `/usr/bin/xclip -loops 1 -out`;
            $self->tt_write ($content);
        };
    }
}
