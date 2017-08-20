.class public Lcom/reoky/crackme/challengefour/fragments/ChallengeFourFragment;
.super Landroid/support/v4/app/Fragment;
.source "ChallengeFourFragment.java"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field private context:Landroid/content/Context;

.field private location:Landroid/location/Location;

.field private locationManager:Landroid/location/LocationManager;

.field private textViewLatitude:Landroid/widget/TextView;

.field private textViewLongitude:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public checkLocation()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 78
    iget-object v1, p0, Lcom/reoky/crackme/challengefour/fragments/ChallengeFourFragment;->location:Landroid/location/Location;

    if-eqz v1, :cond_0    # i.e return void

    .line 79
    iget-object v1, p0, Lcom/reoky/crackme/challengefour/fragments/ChallengeFourFragment;->location:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    double-to-int v1, v2

    const/16 v2, 0x2d

    # if the #1 condition not satisfied, goto cond_1, which mean lose!
    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/reoky/crackme/challengefour/fragments/ChallengeFourFragment;->location:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    double-to-int v1, v2

    const/16 v2, -0x5d
    
    # if the #2 condition not satisfied, goto cond_1, which also means lose!
    if-ne v1, v2, :cond_1

    # if you have passed the examination, that means you've satisfied the two conditions, go bellow!
    .line 80
    iget-object v1, p0, Lcom/reoky/crackme/challengefour/fragments/ChallengeFourFragment;->context:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 81
    .local v0, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v2, 0x578

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 82
    iget-object v1, p0, Lcom/reoky/crackme/challengefour/fragments/ChallengeFourFragment;->context:Landroid/content/Context;

    const v2, 0x7f060010

    invoke-virtual {p0, v2}, Lcom/reoky/crackme/challengefour/fragments/ChallengeFourFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 87
    .end local v0    # "vibrator":Landroid/os/Vibrator;
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    # directly show R.string.string_challenge_four_lose via Toast? which means you lose!
    iget-object v1, p0, Lcom/reoky/crackme/challengefour/fragments/ChallengeFourFragment;->context:Landroid/content/Context;

    const v2, 0x7f06000d

    invoke-virtual {p0, v2}, Lcom/reoky/crackme/challengefour/fragments/ChallengeFourFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 36
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    const v2, 0x7f030002

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 43
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f090008

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 44
    .local v0, "buttonCheck":Landroid/widget/Button;
    new-instance v2, Lcom/reoky/crackme/challengefour/listeners/ChallengeFourFragmentOnClickListener;

    invoke-direct {v2, p0}, Lcom/reoky/crackme/challengefour/listeners/ChallengeFourFragmentOnClickListener;-><init>(Lcom/reoky/crackme/challengefour/fragments/ChallengeFourFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    const v2, 0x7f090006

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/reoky/crackme/challengefour/fragments/ChallengeFourFragment;->textViewLatitude:Landroid/widget/TextView;

    .line 47
    const v2, 0x7f090007

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/reoky/crackme/challengefour/fragments/ChallengeFourFragment;->textViewLongitude:Landroid/widget/TextView;

    .line 48
    iget-object v2, p0, Lcom/reoky/crackme/challengefour/fragments/ChallengeFourFragment;->textViewLatitude:Landroid/widget/TextView;

    const-string v3, "Latitude: Waiting..."

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v2, p0, Lcom/reoky/crackme/challengefour/fragments/ChallengeFourFragment;->textViewLongitude:Landroid/widget/TextView;

    const-string v3, "Longitude: For A Lock..."

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    return-object v1
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 91
    if-eqz p1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/reoky/crackme/challengefour/fragments/ChallengeFourFragment;->textViewLatitude:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Latitude: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/reoky/crackme/challengefour/fragments/ChallengeFourFragment;->textViewLongitude:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Longitude: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    :goto_0
    iput-object p1, p0, Lcom/reoky/crackme/challengefour/fragments/ChallengeFourFragment;->location:Landroid/location/Location;

    .line 99
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/reoky/crackme/challengefour/fragments/ChallengeFourFragment;->textViewLatitude:Landroid/widget/TextView;

    const-string v1, "Latitude: N/A"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lcom/reoky/crackme/challengefour/fragments/ChallengeFourFragment;->textViewLongitude:Landroid/widget/TextView;

    const-string v1, "Longitude: N/A"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 73
    iget-object v0, p0, Lcom/reoky/crackme/challengefour/fragments/ChallengeFourFragment;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 74
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 107
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 105
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 66
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 67
    iget-object v0, p0, Lcom/reoky/crackme/challengefour/fragments/ChallengeFourFragment;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/high16 v4, 0x447a0000    # 1000.0f

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 68
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 55
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 58
    invoke-virtual {p0}, Lcom/reoky/crackme/challengefour/fragments/ChallengeFourFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/reoky/crackme/challengefour/fragments/ChallengeFourFragment;->context:Landroid/content/Context;

    .line 61
    iget-object v0, p0, Lcom/reoky/crackme/challengefour/fragments/ChallengeFourFragment;->context:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/reoky/crackme/challengefour/fragments/ChallengeFourFragment;->locationManager:Landroid/location/LocationManager;

    .line 62
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 103
    return-void
.end method
