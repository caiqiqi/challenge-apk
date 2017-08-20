.class public Lcom/reoky/crackme/challengefour/activities/ChallengeActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "ChallengeActivity.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# instance fields
.field actionBar:Landroid/app/ActionBar;

.field mChallengePagerAdapter:Lcom/reoky/crackme/challengefour/adaptors/ChallengePagerAdapter;

.field mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x2

    .line 22
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/reoky/crackme/challengefour/activities/ChallengeActivity;->setContentView(I)V

    .line 25
    new-instance v0, Lcom/reoky/crackme/challengefour/adaptors/ChallengePagerAdapter;

    invoke-virtual {p0}, Lcom/reoky/crackme/challengefour/activities/ChallengeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/reoky/crackme/challengefour/adaptors/ChallengePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/reoky/crackme/challengefour/activities/ChallengeActivity;->mChallengePagerAdapter:Lcom/reoky/crackme/challengefour/adaptors/ChallengePagerAdapter;

    .line 26
    invoke-virtual {p0}, Lcom/reoky/crackme/challengefour/activities/ChallengeActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/reoky/crackme/challengefour/activities/ChallengeActivity;->actionBar:Landroid/app/ActionBar;

    .line 29
    iget-object v0, p0, Lcom/reoky/crackme/challengefour/activities/ChallengeActivity;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 30
    iget-object v0, p0, Lcom/reoky/crackme/challengefour/activities/ChallengeActivity;->actionBar:Landroid/app/ActionBar;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 33
    const/high16 v0, 0x7f090000

    invoke-virtual {p0, v0}, Lcom/reoky/crackme/challengefour/activities/ChallengeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/reoky/crackme/challengefour/activities/ChallengeActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 34
    iget-object v0, p0, Lcom/reoky/crackme/challengefour/activities/ChallengeActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/reoky/crackme/challengefour/activities/ChallengeActivity;->mChallengePagerAdapter:Lcom/reoky/crackme/challengefour/adaptors/ChallengePagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 35
    iget-object v0, p0, Lcom/reoky/crackme/challengefour/activities/ChallengeActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/reoky/crackme/challengefour/listeners/ChallengeActivityOnPageChangeListener;

    iget-object v2, p0, Lcom/reoky/crackme/challengefour/activities/ChallengeActivity;->actionBar:Landroid/app/ActionBar;

    invoke-direct {v1, v2}, Lcom/reoky/crackme/challengefour/listeners/ChallengeActivityOnPageChangeListener;-><init>(Landroid/app/ActionBar;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 38
    iget-object v0, p0, Lcom/reoky/crackme/challengefour/activities/ChallengeActivity;->actionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/reoky/crackme/challengefour/activities/ChallengeActivity;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    const-string v2, "Challenge"

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 39
    iget-object v0, p0, Lcom/reoky/crackme/challengefour/activities/ChallengeActivity;->actionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/reoky/crackme/challengefour/activities/ChallengeActivity;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    const-string v2, "Hint"

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 40
    iget-object v0, p0, Lcom/reoky/crackme/challengefour/activities/ChallengeActivity;->actionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/reoky/crackme/challengefour/activities/ChallengeActivity;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    const-string v2, "About"

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 43
    invoke-virtual {p0}, Lcom/reoky/crackme/challengefour/activities/ChallengeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 44
    return-void
.end method

.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "fragmentTransaction"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 55
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 2
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "fragmentTransaction"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/reoky/crackme/challengefour/activities/ChallengeActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 49
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "fragmentTransaction"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 52
    return-void
.end method
