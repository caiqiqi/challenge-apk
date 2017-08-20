.class public Lcom/reoky/crackme/challengefour/adaptors/ChallengePagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "ChallengePagerAdapter.java"


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 15
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x3

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 19
    packed-switch p1, :pswitch_data_0

    .line 25
    new-instance v0, Lcom/reoky/crackme/challengefour/fragments/AboutFragment;

    invoke-direct {v0}, Lcom/reoky/crackme/challengefour/fragments/AboutFragment;-><init>()V

    :goto_0
    return-object v0

    .line 21
    :pswitch_0
    new-instance v0, Lcom/reoky/crackme/challengefour/fragments/ChallengeFourFragment;

    invoke-direct {v0}, Lcom/reoky/crackme/challengefour/fragments/ChallengeFourFragment;-><init>()V

    goto :goto_0

    .line 23
    :pswitch_1
    new-instance v0, Lcom/reoky/crackme/challengefour/fragments/HintFragment;

    invoke-direct {v0}, Lcom/reoky/crackme/challengefour/fragments/HintFragment;-><init>()V

    goto :goto_0

    .line 19
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
